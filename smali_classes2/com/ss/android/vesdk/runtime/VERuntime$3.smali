.class Lcom/ss/android/vesdk/runtime/VERuntime$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/runtime/VERuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/runtime/VERuntime;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime$3;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$3;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    # getter for: Lcom/ss/android/vesdk/runtime/VERuntime;->mVEExceptionMonitorListener:Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->access$200(Lcom/ss/android/vesdk/runtime/VERuntime;)Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$3;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    # getter for: Lcom/ss/android/vesdk/runtime/VERuntime;->mVEExceptionMonitorListener:Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->access$200(Lcom/ss/android/vesdk/runtime/VERuntime;)Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;->onException(Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method
