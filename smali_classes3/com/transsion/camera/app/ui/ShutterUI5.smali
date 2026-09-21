.class public Lcom/transsion/camera/app/ui/ShutterUI5;
.super Lcom/transsion/camera/app/ui/ShutterUINew;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$8OlbFCguXvWUtbNlpe4UWs3jbGs(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 2

    const/16 v0, 0x51

    .line 29
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ShutterUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ShutterUINew;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method


# virtual methods
.method protected updateLayoutParams(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 4

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayoutParams(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 27
    sget-object p1, Lcom/transsion/camera/app/ui/ShutterUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "updateLayoutParams: "

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 28
    new-instance p1, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    new-instance p2, Lcom/transsion/camera/app/ui/ShutterUI5$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/ShutterUI5$$ExternalSyntheticLambda0;-><init>()V

    const-class p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->addAdapter(Ljava/lang/Class;Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelRoot:Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    return-void
.end method
