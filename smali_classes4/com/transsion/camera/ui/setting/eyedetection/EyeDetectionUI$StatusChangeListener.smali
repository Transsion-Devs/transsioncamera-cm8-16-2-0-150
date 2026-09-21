.class Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 334
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 337
    invoke-static {}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 338
    const-string v0, "key_focus_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 339
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_a0

    :goto_35
    move p1, v2

    goto :goto_83

    :sswitch_37
    const-string p1, "PASSIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_35

    :cond_40
    const/4 p1, 0x6

    goto :goto_83

    :sswitch_42
    const-string p1, "ACTIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_35

    :cond_4b
    const/4 p1, 0x5

    goto :goto_83

    :sswitch_4d
    const-string p1, "PASSIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_35

    :cond_56
    const/4 p1, 0x4

    goto :goto_83

    :sswitch_58
    const-string p1, "ACTIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_35

    :cond_61
    const/4 p1, 0x3

    goto :goto_83

    :sswitch_63
    const-string p1, "INACTIVE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_35

    :cond_6c
    const/4 p1, 0x2

    goto :goto_83

    :sswitch_6e
    const-string p1, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_35

    :cond_77
    move p1, v0

    goto :goto_83

    :sswitch_79
    const-string p1, "PASSIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    goto :goto_35

    :cond_82
    move p1, v1

    :goto_83
    packed-switch p1, :pswitch_data_be

    goto :goto_9f

    .line 352
    :pswitch_87
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fputmActiveEyeView(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Z)V

    return-void

    .line 344
    :pswitch_8d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fgetmActiveEyeView(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Z

    move-result p1

    if-nez p1, :cond_9f

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fputmActiveEyeView(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Z)V

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->-$$Nest$fputmFaceId(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;I)V

    :cond_9f
    :goto_9f
    return-void

    :sswitch_data_a0
    .sparse-switch
        0x1d09b766 -> :sswitch_79
        0x2c1b7ca5 -> :sswitch_6e
        0x301e4c6b -> :sswitch_63
        0x436bf816 -> :sswitch_58
        0x4b74c21f -> :sswitch_4d
        0x5664cb1e -> :sswitch_42
        0x5b4248b5 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_87
        :pswitch_8d
        :pswitch_87
        :pswitch_8d
        :pswitch_87
        :pswitch_8d
    .end packed-switch
.end method
