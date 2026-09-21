.class Lcom/ss/android/vesdk/VEEditor$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 2

    .line 1156
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayCallback(III)V
    .registers 6

    .line 1159
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1160
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/VEEditor$10$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEEditor$10$1;-><init>(Lcom/ss/android/vesdk/VEEditor$10;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method public onProcessCallback(IILjava/lang/String;)V
    .registers 6

    .line 1173
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1174
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/VEEditor$10$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/ss/android/vesdk/VEEditor$10$2;-><init>(Lcom/ss/android/vesdk/VEEditor$10;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method
