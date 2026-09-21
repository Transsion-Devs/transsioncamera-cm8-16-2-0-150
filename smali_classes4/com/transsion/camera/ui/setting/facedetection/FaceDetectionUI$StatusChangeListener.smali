.class Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 316
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 319
    invoke-static {}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    const-string v0, "key_focus_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 321
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_ac

    goto :goto_88

    :sswitch_3c
    const-string v0, "PASSIVE_SCAN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_88

    :cond_45
    const/4 v3, 0x6

    goto :goto_88

    :sswitch_47
    const-string v0, "ACTIVE_FOCUSED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_88

    :cond_50
    const/4 v3, 0x5

    goto :goto_88

    :sswitch_52
    const-string v0, "PASSIVE_FOCUSED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_88

    :cond_5b
    const/4 v3, 0x4

    goto :goto_88

    :sswitch_5d
    const-string v0, "ACTIVE_SCAN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_88

    :cond_66
    const/4 v3, 0x3

    goto :goto_88

    :sswitch_68
    const-string v0, "INACTIVE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_88

    :cond_71
    const/4 v3, 0x2

    goto :goto_88

    :sswitch_73
    const-string v0, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_88

    :cond_7c
    move v3, v1

    goto :goto_88

    :sswitch_7e
    const-string v0, "PASSIVE_UNFOCUSED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto :goto_88

    :cond_87
    move v3, v2

    :goto_88
    packed-switch v3, :pswitch_data_ca

    goto :goto_97

    .line 331
    :pswitch_8c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->-$$Nest$fputmActiveFaceView(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Z)V

    goto :goto_97

    .line 326
    :pswitch_92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->-$$Nest$fputmActiveFaceView(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Z)V

    .line 336
    :cond_97
    :goto_97
    const-string v0, "key_auto_focus_switch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->-$$Nest$fputmIsAutoFocusSwitchOn(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Z)V

    :cond_aa
    return-void

    nop

    :sswitch_data_ac
    .sparse-switch
        0x1d09b766 -> :sswitch_7e
        0x2c1b7ca5 -> :sswitch_73
        0x301e4c6b -> :sswitch_68
        0x436bf816 -> :sswitch_5d
        0x4b74c21f -> :sswitch_52
        0x5664cb1e -> :sswitch_47
        0x5b4248b5 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_92
        :pswitch_8c
        :pswitch_92
        :pswitch_8c
        :pswitch_92
        :pswitch_8c
        :pswitch_92
    .end packed-switch
.end method
