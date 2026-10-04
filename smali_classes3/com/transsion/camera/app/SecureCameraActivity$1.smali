.class Lcom/transsion/camera/app/SecureCameraActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/SecureCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/SecureCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/SecureCameraActivity;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-static {}, Lcom/transsion/camera/app/SecureCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOffReceiver receive,action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-boolean v1, v1, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/SecureCameraActivity;->-$$Nest$fgetmFinished(Lcom/transsion/camera/app/SecureCameraActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_a6

    goto :goto_63

    :sswitch_43
    const-string p2, "android.intent.action.CUSTOM_SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_63

    :cond_4c
    const/4 v1, 0x2

    goto :goto_63

    :sswitch_4e
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto :goto_63

    :cond_57
    move v1, v0

    goto :goto_63

    :sswitch_59
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    :goto_63
    packed-switch v1, :pswitch_data_b4

    goto :goto_a4

    .line 396
    :pswitch_67
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x6

    if-eq p2, p1, :cond_a4

    .line 397
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity;->unRegisterScreenOff()V

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 389
    :pswitch_7d
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-boolean p2, p1, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    if-nez p2, :cond_a4

    invoke-static {p1}, Lcom/transsion/camera/app/SecureCameraActivity;->-$$Nest$fgetmFinished(Lcom/transsion/camera/app/SecureCameraActivity;)Z

    move-result p1

    if-nez p1, :cond_a4

    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/SecureCameraActivity;->isPowerScreenOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a4

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/SecureCameraActivity;->-$$Nest$fputmFinished(Lcom/transsion/camera/app/SecureCameraActivity;Z)V

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity;->unRegisterScreenOff()V

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a4
    :goto_a4
    return-void

    nop

    :sswitch_data_a6
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_59
        0x311a1d6c -> :sswitch_4e
        0x6633ee65 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_67
        :pswitch_7d
    .end packed-switch
.end method
