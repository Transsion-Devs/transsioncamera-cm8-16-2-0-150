.class Lcom/ss/android/vesdk/proxy/TEDuetProxy$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/proxy/TEDuetProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/proxy/TEDuetProxy;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/proxy/TEDuetProxy;Landroid/os/Looper;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy$1;->this$0:Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 37
    iget-object p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy$1;->this$0:Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
