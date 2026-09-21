.class public Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI5Ext;
.super Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$LHq9H1q987qsp4wtxUCStIABRp4(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 2

    const/16 v0, 0x51

    .line 24
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;-><init>()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/View;)V
    .registers 4

    .line 17
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI5Ext;->createView(Landroid/view/View;)V

    .line 18
    sget p0, Lcom/transsion/camera/R$id;->shutter_progress:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_26

    .line 22
    new-instance p1, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    new-instance v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI5Ext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI5Ext$$ExternalSyntheticLambda0;-><init>()V

    .line 23
    const-class v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->addAdapter(Ljava/lang/Class;Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    :cond_26
    return-void
.end method
