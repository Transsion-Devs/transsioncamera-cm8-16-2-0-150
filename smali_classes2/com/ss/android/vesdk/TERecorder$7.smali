.class Lcom/ss/android/vesdk/TERecorder$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->concatAsync(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VECallListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$audioPath:Ljava/lang/String;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field final synthetic val$maxVideoTime:I

.field final synthetic val$rotate:I

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 9

    .line 1572
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$7;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$videoPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$audioPath:Ljava/lang/String;

    iput p4, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$rotate:I

    iput-object p5, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$description:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$comment:Ljava/lang/String;

    iput p7, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$maxVideoTime:I

    iput-object p8, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1575
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$7;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$videoPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$audioPath:Ljava/lang/String;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$rotate:I

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$description:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$comment:Ljava/lang/String;

    iget v6, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$maxVideoTime:I

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/vesdk/TERecorder;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1576
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$7;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_19

    .line 1577
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_19
    return-void
.end method
