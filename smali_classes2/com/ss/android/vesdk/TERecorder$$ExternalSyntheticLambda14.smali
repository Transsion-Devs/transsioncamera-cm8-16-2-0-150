.class public final synthetic Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/TERecorder;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/TERecorder;IJJLjava/lang/String;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$1:I

    iput-wide p3, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$2:J

    iput-wide p5, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$3:J

    iput-object p7, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$1:I

    iget-wide v2, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$2:J

    iget-wide v4, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$3:J

    iget-object v6, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda14;->f$4:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/ss/android/vesdk/TERecorder;->$r8$lambda$CSI9n6uBTma1Lx8rlW22kXnKMQU(Lcom/ss/android/vesdk/TERecorder;IJJLjava/lang/String;)V

    return-void
.end method
