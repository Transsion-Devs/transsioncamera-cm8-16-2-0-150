.class Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->dismissKeyguard(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

.field final synthetic val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;)V
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_7

    .line 93
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissCancelled()V

    :cond_7
    return-void
.end method

.method public onDismissError()V
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_7

    .line 79
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissError()V

    :cond_7
    return-void
.end method

.method public onDismissSucceeded()V
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$1;->val$callback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_7

    .line 86
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissSucceeded()V

    :cond_7
    return-void
.end method
