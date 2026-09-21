.class public Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;
.super Lcom/tencent/qgame/animplayer/AnimView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, p2, p1, p1}, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .registers 6

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->AutoPlayVapView:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 37
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->AutoPlayVapView_video_assets:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 38
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->AutoPlayVapView_loop_times:I

    const v0, 0x7fffffff

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 39
    invoke-virtual {p0, p3}, Lcom/tencent/qgame/animplayer/AnimView;->setLoop(I)V

    if-eqz p2, :cond_2d

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;->startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 43
    :cond_2d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5

    .line 48
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    if-eqz v0, :cond_20

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 51
    invoke-super {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Ljava/io/File;)V

    return-void

    .line 53
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_20
    invoke-super {p0, p1, p2}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void
.end method
