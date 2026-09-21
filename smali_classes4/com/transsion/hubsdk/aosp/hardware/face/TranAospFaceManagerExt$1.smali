.class Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;->authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;Landroid/os/Handler;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;

.field final synthetic val$callback:Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;

    if-eqz p0, :cond_7

    .line 42
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;->onAuthenticationAcquired(I)V

    :cond_7
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 3

    .line 48
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;

    if-eqz p0, :cond_7

    .line 49
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;

    if-eqz p0, :cond_7

    .line 70
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;->onAuthenticationFailed()V

    :cond_7
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;

    if-eqz p0, :cond_7

    .line 56
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public onAuthenticationSucceeded(Ljava/lang/String;)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;

    if-eqz p0, :cond_7

    .line 63
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;->onAuthenticationSucceeded(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
