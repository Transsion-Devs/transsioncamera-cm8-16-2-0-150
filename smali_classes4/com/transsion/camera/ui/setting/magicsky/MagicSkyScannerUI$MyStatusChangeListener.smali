.class Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 421
    const-string v0, "key_magic_sky_detection"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 422
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmDetectCount(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    if-lez p1, :cond_24

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmDetectCount(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmDetectCount(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V

    return-void

    .line 426
    :cond_24
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmDetectCount(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    if-nez p1, :cond_38

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmIsContinuousNotDetect(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)V

    goto :goto_3e

    .line 429
    :cond_38
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmIsContinuousNotDetect(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)V

    .line 431
    :goto_3e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmIsContinuousNotDetect(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Z

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x2

    if-eqz p1, :cond_5b

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmagicSkyUIHandler(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmagicSkyUIHandler(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6d

    .line 435
    :cond_5b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmagicSkyUIHandler(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmagicSkyUIHandler(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    :goto_6d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmDetectCount(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V

    return-void

    .line 439
    :cond_75
    const-string v0, "key_fold_switch_preview"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 440
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmSwitchPreviewValue(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$400(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_96

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    .line 442
    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$500(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_9f

    .line 443
    :cond_96
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$mupdateLayoutParams(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Landroid/graphics/Rect;)V

    :cond_9f
    return-void
.end method
