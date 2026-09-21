.class Lcom/ss/android/vesdk/runtime/VERuntime$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/monitor/ApplogUtils$Listener;


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

    .line 119
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime$2;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 127
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$2;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    # getter for: Lcom/ss/android/vesdk/runtime/VERuntime;->mVEApplogListener:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->access$100(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$2;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    # getter for: Lcom/ss/android/vesdk/runtime/VERuntime;->mVEApplogListener:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->access$100(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 128
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$2;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    # getter for: Lcom/ss/android/vesdk/runtime/VERuntime;->mVEApplogListener:Ljava/lang/ref/WeakReference;
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->access$100(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/ss/android/vesdk/VEListener$VEApplogListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/vesdk/VEListener$VEApplogListener;->onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method
