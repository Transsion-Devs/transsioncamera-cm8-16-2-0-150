.class Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;->authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;Landroid/os/Handler;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;

.field final synthetic val$callback:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;)V
    .registers 3

    .line 28
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;->val$callback:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;->val$callback:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;->onAuthenticationAcquired(I)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 3

    .line 31
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;->val$callback:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;->val$callback:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;

    invoke-interface {p0}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3

    .line 36
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;->val$callback:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$1;->val$callback:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;->onAuthenticationSucceeded(Ljava/lang/String;)V

    return-void
.end method
