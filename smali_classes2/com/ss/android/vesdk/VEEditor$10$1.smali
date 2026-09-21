.class Lcom/ss/android/vesdk/VEEditor$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor$10;->onDisplayCallback(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/VEEditor$10;

.field final synthetic val$mode:I

.field final synthetic val$time:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor$10;III)V
    .registers 5

    .line 1160
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$10$1;->this$1:Lcom/ss/android/vesdk/VEEditor$10;

    iput p2, p0, Lcom/ss/android/vesdk/VEEditor$10$1;->val$time:I

    iput p3, p0, Lcom/ss/android/vesdk/VEEditor$10$1;->val$mode:I

    iput p4, p0, Lcom/ss/android/vesdk/VEEditor$10$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1163
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10$1;->this$1:Lcom/ss/android/vesdk/VEEditor$10;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1164
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$10$1;->this$1:Lcom/ss/android/vesdk/VEEditor$10;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$10;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$3200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor$10$1;->val$time:I

    iget v2, p0, Lcom/ss/android/vesdk/VEEditor$10$1;->val$mode:I

    iget p0, p0, Lcom/ss/android/vesdk/VEEditor$10$1;->val$type:I

    invoke-interface {v0, v1, v2, p0}, Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;->onDisplayCallback(III)V

    :cond_1b
    return-void
.end method
