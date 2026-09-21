.class public Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IHintUI;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mContext:Landroid/content/Context;

.field private mEffect:Ljava/lang/String;

.field private final mMaximumDailyUsageTip:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mPartial:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtMuseum_HintUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 5

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 41
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mMaximumDailyUsageTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 42
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mContext:Landroid/content/Context;

    .line 47
    sget p0, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_capture_tip_maximum_daily_usage:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method private hideCaptureSuggestion()V
    .registers 3

    .line 132
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideCaptureSuggestion"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private hideMaximumDailyUsageHint()V
    .registers 3

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideMaximumDailyUsageHint"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mMaximumDailyUsageTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private showCaptureSuggestion()V
    .registers 4

    .line 125
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCaptureSuggestion, CurrentUIState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2d

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2d
    return-void
.end method

.method private updateCaptureSuggestion()V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mEffect:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 71
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateEffect mEffect is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mEffect:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "key_ai_art_museum_travel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "key_ai_art_museum_partial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->hideCaptureSuggestion()V

    return-void

    .line 82
    :cond_2a
    const-string v0, "partial_painted_tattoo"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mPartial:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_suggest_capturing_arms:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 84
    :cond_3d
    const-string v0, "partial_anime_customization"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mPartial:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_suggest_capturing_single_person:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 87
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_suggest_capturing_clothing:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_58
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->showCaptureSuggestion()V

    return-void

    .line 76
    :cond_61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_suggest_capturing_single_person:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->showCaptureSuggestion()V

    return-void
.end method


# virtual methods
.method public onCaptureFail()V
    .registers 1

    .line 101
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onCaptureFail()V

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->updateCaptureSuggestion()V

    return-void
.end method

.method public onCaptureShot([B)V
    .registers 2

    .line 107
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onCaptureShot([B)V

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->updateCaptureSuggestion()V

    return-void
.end method

.method public showMaximumDailyUsageHint()V
    .registers 3

    .line 113
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showMaximumDailyUsageHint"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_18

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mMaximumDailyUsageTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method public unInit()V
    .registers 1

    .line 52
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->unInit()V

    .line 53
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->hideMaximumDailyUsageHint()V

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->hideCaptureSuggestion()V

    return-void
.end method

.method public updateEffect(Ljava/lang/String;)V
    .registers 5

    .line 58
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffect effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mEffect:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->updateCaptureSuggestion()V

    return-void
.end method

.method public updatePartial(Ljava/lang/String;)V
    .registers 5

    .line 64
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePartial partial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->mPartial:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->updateCaptureSuggestion()V

    return-void
.end method
