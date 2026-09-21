.class Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 246
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 249
    invoke-static {}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 250
    const-string v0, "key_focus_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 251
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_92

    goto :goto_82

    :sswitch_36
    const-string p1, "PASSIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_82

    :cond_3f
    const/4 v2, 0x6

    goto :goto_82

    :sswitch_41
    const-string p1, "ACTIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_82

    :cond_4a
    const/4 v2, 0x5

    goto :goto_82

    :sswitch_4c
    const-string p1, "PASSIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto :goto_82

    :cond_55
    const/4 v2, 0x4

    goto :goto_82

    :sswitch_57
    const-string p1, "ACTIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto :goto_82

    :cond_60
    const/4 v2, 0x3

    goto :goto_82

    :sswitch_62
    const-string p1, "INACTIVE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_82

    :cond_6b
    const/4 v2, 0x2

    goto :goto_82

    :sswitch_6d
    const-string p1, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    goto :goto_82

    :cond_76
    move v2, v0

    goto :goto_82

    :sswitch_78
    const-string p1, "PASSIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_81

    goto :goto_82

    :cond_81
    move v2, v1

    :goto_82
    packed-switch v2, :pswitch_data_b0

    goto :goto_91

    .line 261
    :pswitch_86
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->-$$Nest$fputmActiveHumanView(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Z)V

    return-void

    .line 256
    :pswitch_8c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->-$$Nest$fputmActiveHumanView(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Z)V

    :cond_91
    :goto_91
    return-void

    :sswitch_data_92
    .sparse-switch
        0x1d09b766 -> :sswitch_78
        0x2c1b7ca5 -> :sswitch_6d
        0x301e4c6b -> :sswitch_62
        0x436bf816 -> :sswitch_57
        0x4b74c21f -> :sswitch_4c
        0x5664cb1e -> :sswitch_41
        0x5b4248b5 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_86
        :pswitch_8c
        :pswitch_86
        :pswitch_8c
        :pswitch_86
        :pswitch_8c
    .end packed-switch
.end method
