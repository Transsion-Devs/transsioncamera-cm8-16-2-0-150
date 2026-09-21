.class public Lcom/transsion/camera/app/SpecifyModePolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUIRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mIntent:Lcom/transsion/camera/app/intent/IntentParser;

.field private mIntentActionDone:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SpecifyModePolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/SpecifyModePolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/transsion/camera/app/intent/IntentParser;)V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntentActionDone:Z

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    .line 24
    iput-object p3, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntent:Lcom/transsion/camera/app/intent/IntentParser;

    return-void
.end method


# virtual methods
.method public doActionAfterPreviewStarted()V
    .registers 7

    .line 28
    iget-boolean v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntentActionDone:Z

    if-eqz v0, :cond_c

    .line 29
    sget-object p0, Lcom/transsion/camera/app/SpecifyModePolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doActionAfterPreviewStarted return."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntentActionDone:Z

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntent:Lcom/transsion/camera/app/intent/IntentParser;

    iget-boolean v3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySlimBody:Z

    const-string v4, "id"

    if-eqz v3, :cond_2a

    .line 37
    const-string v2, "slimbody_bar"

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_69

    .line 38
    :cond_2a
    iget-boolean v3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFaceBeauty:Z

    const-string v5, "face_beauty_bar"

    if-eqz v3, :cond_35

    .line 39
    invoke-virtual {v1, v5, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_69

    .line 40
    :cond_35
    iget-boolean v3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFunVideo:Z

    if-eqz v3, :cond_3e

    .line 41
    invoke-virtual {v1, v5, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_69

    .line 42
    :cond_3e
    iget-boolean v3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokeh:Z

    if-eqz v3, :cond_49

    .line 43
    const-string v2, "level_indicator_layout"

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_69

    .line 44
    :cond_49
    iget-boolean v3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeauty:Z

    if-eqz v3, :cond_54

    .line 45
    const-string v2, "face_beauty_v2_switch_icon"

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_69

    .line 46
    :cond_54
    iget-boolean v3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideo:Z

    if-eqz v3, :cond_5d

    .line 47
    invoke-virtual {v1, v5, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_69

    .line 48
    :cond_5d
    iget-boolean v2, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySettingVideoPortrait:Z

    if-eqz v2, :cond_68

    .line 49
    const-string v2, "setting_ui_item_video_portrait"

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_69

    :cond_68
    const/4 v0, -0x1

    .line 51
    :goto_69
    iget-object p0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_74

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_74
    return-void
.end method
