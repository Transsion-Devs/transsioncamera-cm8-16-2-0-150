.class Lcom/ss/android/vesdk/VEEditor$10$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor$10;->onProcessCallback(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/VEEditor$10;

.field final synthetic val$filterIndex:I

.field final synthetic val$param:Ljava/lang/String;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor$10;Ljava/lang/String;II)V
    .registers 5

    .line 1174
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->this$1:Lcom/ss/android/vesdk/VEEditor$10;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->val$param:Ljava/lang/String;

    iput p3, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->val$filterIndex:I

    iput p4, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1177
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->this$1:Lcom/ss/android/vesdk/VEEditor$10;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1179
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->val$param:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 1180
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->this$1:Lcom/ss/android/vesdk/VEEditor$10;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mKeyFrameMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3300(Lcom/ss/android/vesdk/VEEditor;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->val$filterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->val$param:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    :cond_21
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->this$1:Lcom/ss/android/vesdk/VEEditor$10;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->val$filterIndex:I

    iget v2, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->val$time:I

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$10$2;->val$param:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;->onProcessCallback(IILjava/lang/String;)V

    :cond_32
    return-void
.end method
