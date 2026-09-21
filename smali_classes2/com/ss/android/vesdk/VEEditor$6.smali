.class Lcom/ss/android/vesdk/VEEditor$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;


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

    .line 1073
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$6;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompressBuffer([BIIZ)I
    .registers 6

    if-eqz p1, :cond_1c

    if-ltz p2, :cond_1c

    if-gtz p3, :cond_7

    goto :goto_1c

    .line 1081
    :cond_7
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$6;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$2900(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 p0, -0x2

    return p0

    .line 1085
    :cond_11
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$6;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$2900(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEListener$VEEncoderListener;->onEncoderDataAvailable([BIIZ)V

    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, -0x1

    return p0
.end method
