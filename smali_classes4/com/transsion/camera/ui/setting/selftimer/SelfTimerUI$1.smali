.class Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .registers 2

    .line 693
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 693
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 696
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 697
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_8a

    goto :goto_58

    :sswitch_2d
    const-string v0, "key_shutter_sound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_58

    :cond_36
    move v4, v3

    goto :goto_58

    :sswitch_38
    const-string v0, "key_start_gesture_self_timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_58

    :cond_41
    move v4, v1

    goto :goto_58

    :sswitch_43
    const-string v0, "key_self_timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_58

    :cond_4c
    move v4, v2

    goto :goto_58

    :sswitch_4e
    const-string v0, "key_start_self_timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    packed-switch v4, :pswitch_data_9c

    return-void

    .line 699
    :pswitch_5c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fputmSoundEnable(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Z)V

    .line 700
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$mloadSelfTimerSoundIfNeed(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    return-void

    .line 710
    :pswitch_6d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fputmCurrentPriority(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)V

    .line 711
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0, p2, v1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$mstartSelfTimerImmediately(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;I)V

    return-void

    .line 703
    :pswitch_78
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$monSelfTimerStatusChanged(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)V

    return-void

    .line 706
    :pswitch_7e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$fputmCurrentPriority(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)V

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0, p2, v2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->-$$Nest$mstartSelfTimerImmediately(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;I)V

    return-void

    nop

    :sswitch_data_8a
    .sparse-switch
        0x2cf55e6f -> :sswitch_4e
        0x30a2e672 -> :sswitch_43
        0x5d403225 -> :sswitch_38
        0x6467fc5d -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_78
        :pswitch_6d
        :pswitch_5c
    .end packed-switch
.end method
