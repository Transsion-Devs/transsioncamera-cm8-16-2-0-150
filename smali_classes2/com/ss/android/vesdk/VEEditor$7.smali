.class Lcom/ss/android/vesdk/VEEditor$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;


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

    .line 1091
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$7;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageData([BIIIF)I
    .registers 12

    .line 1095
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$7;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$1400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 p0, -0x64

    return p0

    :cond_b
    if-nez p1, :cond_29

    .line 1100
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$7;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1101
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x1015

    .line 1102
    iput p2, p1, Landroid/os/Message;->what:I

    .line 1103
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$7;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0

    .line 1107
    :cond_29
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$7;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$1400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/vesdk/VEListener$VEGetImageListener;->onGetImageData([BIIIF)I

    move-result p0

    return p0
.end method
