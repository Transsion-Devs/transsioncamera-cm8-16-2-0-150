.class Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 325
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 328
    sget-object v0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    const-string v0, "key_focus_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 330
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_94

    goto :goto_7e

    :sswitch_32
    const-string p1, "PASSIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_7e

    :cond_3b
    const/4 v0, 0x6

    goto :goto_7e

    :sswitch_3d
    const-string p1, "ACTIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_7e

    :cond_46
    const/4 v0, 0x5

    goto :goto_7e

    :sswitch_48
    const-string p1, "PASSIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_7e

    :cond_51
    const/4 v0, 0x4

    goto :goto_7e

    :sswitch_53
    const-string p1, "ACTIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_7e

    :cond_5c
    const/4 v0, 0x3

    goto :goto_7e

    :sswitch_5e
    const-string p1, "INACTIVE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_7e

    :cond_67
    const/4 v0, 0x2

    goto :goto_7e

    :sswitch_69
    const-string p1, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_7e

    :cond_72
    const/4 v0, 0x1

    goto :goto_7e

    :sswitch_74
    const-string p1, "PASSIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    const-string p1, "key_taint_state"

    packed-switch v0, :pswitch_data_b2

    goto :goto_93

    .line 340
    :pswitch_84
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    const-string p2, "taint_invalid_state"

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$mnotifyStatusChanged(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 335
    :pswitch_8c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    const-string p2, "taint_normal_state"

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$mnotifyStatusChanged(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    :goto_93
    return-void

    :sswitch_data_94
    .sparse-switch
        0x1d09b766 -> :sswitch_74
        0x2c1b7ca5 -> :sswitch_69
        0x301e4c6b -> :sswitch_5e
        0x436bf816 -> :sswitch_53
        0x4b74c21f -> :sswitch_48
        0x5664cb1e -> :sswitch_3d
        0x5b4248b5 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_84
        :pswitch_8c
        :pswitch_84
        :pswitch_8c
        :pswitch_84
        :pswitch_8c
    .end packed-switch
.end method
