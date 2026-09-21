.class public final synthetic Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/flogger/util/StackWalkerStackGetter;

.field public final synthetic f$1:Ljava/lang/Class;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/flogger/util/StackWalkerStackGetter;Ljava/lang/Class;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;->f$0:Lcom/google/common/flogger/util/StackWalkerStackGetter;

    iput-object p2, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Class;

    iput p3, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;->f$2:I

    iput p4, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;->f$0:Lcom/google/common/flogger/util/StackWalkerStackGetter;

    iget-object v1, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Class;

    iget v2, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;->f$2:I

    iget p0, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda10;->f$3:I

    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter;->$r8$lambda$6aHZrMBUxLxLKjl-TfoNnLu99rY(Lcom/google/common/flogger/util/StackWalkerStackGetter;Ljava/lang/Class;IILjava/util/stream/Stream;)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
