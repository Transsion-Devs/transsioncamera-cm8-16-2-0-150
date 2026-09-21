.class public Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UIHandler"
.end annotation


# static fields
.field private static final TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mPreviewUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1560
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewUIHandler"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 3

    .line 1563
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1564
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->mPreviewUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1569
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->mPreviewUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    if-nez p0, :cond_23

    .line 1571
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage previewUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1574
    :cond_23
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;->TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1575
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mgetExpandView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object v0

    .line 1576
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mgetAuxPreviewSurface(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object v1

    .line 1577
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxSurfaceShow()Z

    move-result v2

    .line 1578
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mgetExpandViewShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result v3

    .line 1579
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_fc

    goto/16 :goto_f3

    .line 1640
    :pswitch_52
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mdoSetBackgroundPreviewSize(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V

    return-void

    :pswitch_5a
    if-nez v3, :cond_6f

    const/4 p1, 0x1

    .line 1626
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$msetExpandViewShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V

    if-eqz v1, :cond_f3

    .line 1627
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f3

    .line 1628
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeOutAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 1629
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeInExpandPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void

    :cond_6f
    const/4 p1, 0x0

    .line 1632
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$msetExpandViewShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V

    if-eqz v0, :cond_f3

    .line 1633
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f3

    .line 1634
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeOutExpandPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 1635
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeInAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void

    .line 1622
    :pswitch_82
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mupdateLocateViewSize(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void

    .line 1619
    :pswitch_86
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mdoSetAuxPreviewSize(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V

    return-void

    .line 1584
    :pswitch_8e
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mgetAuxPreviewModeSupport(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-nez p1, :cond_ab

    if-eqz v1, :cond_9f

    .line 1585
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9f

    .line 1586
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeOutAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_9f
    if-eqz v0, :cond_f3

    .line 1588
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f3

    .line 1589
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeOutExpandPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void

    :cond_ab
    if-nez v2, :cond_c4

    if-eqz v1, :cond_b8

    .line 1594
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b8

    .line 1595
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeOutAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_b8
    if-eqz v0, :cond_f3

    .line 1597
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f3

    .line 1598
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeOutExpandPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void

    :cond_c4
    if-eqz v3, :cond_dd

    if-eqz v1, :cond_d1

    .line 1602
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d1

    .line 1603
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeOutAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_d1
    if-eqz v0, :cond_f3

    .line 1605
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_f3

    .line 1606
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeInExpandPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void

    :cond_dd
    if-eqz v0, :cond_e8

    .line 1609
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e8

    .line 1610
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeOutExpandPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_e8
    if-eqz v1, :cond_f3

    .line 1612
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_f3

    .line 1613
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mfadeInAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_f3
    :goto_f3
    return-void

    .line 1581
    :pswitch_f4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mdoSetPreviewSize(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V

    return-void

    :pswitch_data_fc
    .packed-switch 0x64
        :pswitch_f4
        :pswitch_8e
        :pswitch_86
        :pswitch_82
        :pswitch_5a
        :pswitch_52
    .end packed-switch
.end method
