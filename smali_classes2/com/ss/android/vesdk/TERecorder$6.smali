.class Lcom/ss/android/vesdk/TERecorder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->tryRestoreAsync(Ljava/util/List;Ljava/lang/String;IILcom/ss/android/vesdk/VEListener$VECallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$bgmPaths:Ljava/lang/String;

.field final synthetic val$bgmType:I

.field final synthetic val$models:Ljava/util/List;

.field final synthetic val$trimIn:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Ljava/util/List;Ljava/lang/String;II)V
    .registers 6

    .line 1515
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$6;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$6;->val$models:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder$6;->val$bgmPaths:Ljava/lang/String;

    iput p4, p0, Lcom/ss/android/vesdk/TERecorder$6;->val$trimIn:I

    iput p5, p0, Lcom/ss/android/vesdk/TERecorder$6;->val$bgmType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1518
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$6;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$6;->val$models:Ljava/util/List;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder$6;->val$bgmPaths:Ljava/lang/String;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorder$6;->val$trimIn:I

    iget v4, p0, Lcom/ss/android/vesdk/TERecorder$6;->val$bgmType:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/vesdk/TERecorder;->tryRestore(Ljava/util/List;Ljava/lang/String;II)I

    move-result v0

    .line 1519
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$6;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, v1, Lcom/ss/android/vesdk/TERecorder;->mRestoreCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz v1, :cond_1c

    .line 1520
    invoke-interface {v1, v0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    .line 1521
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$6;->this$0:Lcom/ss/android/vesdk/TERecorder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRestoreCallback:Lcom/ss/android/vesdk/VEListener$VECallListener;

    :cond_1c
    return-void
.end method
