.class public Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoldWaterMarkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Landroid/os/Looper;)V
    .registers 3

    .line 548
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    .line 549
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/ProGoldWatermark-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 554
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage]: msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", location check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmLocationButtonCheck(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmLocationButtonCheck(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_5d

    .line 558
    :cond_31
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_74

    goto :goto_5d

    .line 569
    :pswitch_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmToastInfo(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_network_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 570
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_5d

    .line 571
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmToastInfo(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_5d
    :goto_5d
    return-void

    .line 566
    :pswitch_5e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$mwhileGettingLocation(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)V

    return-void

    .line 563
    :pswitch_64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmCityInfoStr(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$mshowOrHideLocationPreviewText(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Ljava/lang/String;)V

    return-void

    .line 560
    :pswitch_6e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$mshowOrHideLocationPreviewText(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)V

    return-void

    :pswitch_data_74
    .packed-switch 0x65
        :pswitch_6e
        :pswitch_64
        :pswitch_5e
        :pswitch_37
    .end packed-switch
.end method
