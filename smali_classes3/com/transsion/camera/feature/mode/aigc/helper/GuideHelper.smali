.class public Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AIGC_GUIDE_SHOW_THRESHOLD:I = 0x3

.field private static final DEFAULT_AIGC_GUIDE_SHOW_TIMES:Ljava/lang/String; = "0"

.field private static final KEY_AIGC_BUBBLE_GUIDE_SHOW_FLAG:Ljava/lang/String; = "key_aigc_bubble_guide_show_flag"

.field private static final KEY_AIGC_GUIDE_SHOW_FLAG:Ljava/lang/String; = "key_aigc_guide_show_flag"

.field private static final KEY_AIGC_GUIDE_SHOW_TIMES:Ljava/lang/String; = "key_aigc_guide_show_times"

.field private static final KEY_AIGC_PREVIEW_GUIDE_SHOW_FLAG:Ljava/lang/String; = "key_aigc_preview_guide_show_flag"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sActivityIdentity:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GuideHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private activityChanged()Z
    .registers 4

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 69
    sget v0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->sActivityIdentity:I

    if-eq p0, v0, :cond_e

    .line 70
    sput p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->sActivityIdentity:I

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 73
    :goto_f
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityChanged changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private getGuideShowTimes()I
    .registers 4

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "0"

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "key_aigc_guide_show_times"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private showFlag()Z
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 78
    const-string v2, "key_aigc_guide_show_flag"

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private updateFlag()V
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    const-string v3, "key_aigc_guide_show_flag"

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public bubbleGuideShowed()V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    .line 102
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 101
    const-string v3, "key_aigc_bubble_guide_show_flag"

    invoke-virtual {v0, v3, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public increase()V
    .registers 5

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->getGuideShowTimes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 46
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increase guideShowTimes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 47
    const-string v3, "key_aigc_guide_show_times"

    invoke-virtual {v1, v3, v0, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public previewGuideShowed(Z)V
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 107
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 106
    const-string v2, "key_aigc_preview_guide_show_flag"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public previewGuideShowed()Z
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    .line 112
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 111
    const-string v3, "key_aigc_preview_guide_show_flag"

    invoke-virtual {v0, v3, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 116
    :try_start_13
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_18

    return p0

    .line 118
    :catch_18
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseBoolean exception, showFlagStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public shouldShowBubble()Z
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 87
    const-string v2, "key_aigc_bubble_guide_show_flag"

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 92
    :try_start_13
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_18

    return p0

    .line 94
    :catch_18
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseBoolean exception, showFlagStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public showGuide()Z
    .registers 3

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->activityChanged()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->showFlag()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 59
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->updateFlag()V

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/helper/GuideHelper;->getGuideShowTimes()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method
