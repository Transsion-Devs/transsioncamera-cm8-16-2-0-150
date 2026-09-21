.class public Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI5;
.super Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mParamsUpdater:Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;


# direct methods
.method public static synthetic $r8$lambda$uf12zNk1MSsANk9bZvP020U4xJQ(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 2

    const/16 v0, 0x51

    .line 22
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 20
    new-instance p1, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    const/16 p2, 0x42

    .line 21
    invoke-static {p2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setHeight(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI5$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI5$$ExternalSyntheticLambda0;-><init>()V

    .line 22
    const-class v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->addAdapter(Ljava/lang/Class;Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI5;->mParamsUpdater:Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    return-void
.end method


# virtual methods
.method protected updateRootRect()V
    .registers 3

    .line 27
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateRootRect()V

    .line 28
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mScreenFormType:I

    if-nez v0, :cond_18

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateRootRect: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v0, :cond_18

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI5;->mParamsUpdater:Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    :cond_18
    return-void
.end method
