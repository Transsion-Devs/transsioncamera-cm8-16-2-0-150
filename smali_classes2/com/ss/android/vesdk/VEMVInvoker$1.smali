.class Lcom/ss/android/vesdk/VEMVInvoker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEMVInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEMVInvoker;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEMVInvoker;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMVInvoker$1;->this$0:Lcom/ss/android/vesdk/VEMVInvoker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInited()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMVInvoker$1;->this$0:Lcom/ss/android/vesdk/VEMVInvoker;

    # getter for: Lcom/ss/android/vesdk/VEMVInvoker;->mMVInitListener:Lcom/ss/android/vesdk/VEListener$VEMVInitListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEMVInvoker;->access$000(Lcom/ss/android/vesdk/VEMVInvoker;)Lcom/ss/android/vesdk/VEListener$VEMVInitListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 72
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMVInvoker$1;->this$0:Lcom/ss/android/vesdk/VEMVInvoker;

    # getter for: Lcom/ss/android/vesdk/VEMVInvoker;->mMVInitListener:Lcom/ss/android/vesdk/VEListener$VEMVInitListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEMVInvoker;->access$000(Lcom/ss/android/vesdk/VEMVInvoker;)Lcom/ss/android/vesdk/VEListener$VEMVInitListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/VEListener$VEMVInitListener;->onInited()V

    :cond_11
    return-void
.end method
