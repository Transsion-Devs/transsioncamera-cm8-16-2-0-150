.class public final synthetic Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/flogger/util/StackWalkerStackGetter;

.field public final synthetic f$1:Ljava/lang/Class;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/flogger/util/StackWalkerStackGetter;Ljava/lang/Class;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda9;->f$0:Lcom/google/common/flogger/util/StackWalkerStackGetter;

    iput-object p2, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Class;

    iput p3, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda9;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda9;->f$0:Lcom/google/common/flogger/util/StackWalkerStackGetter;

    iget-object v1, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Class;

    iget p0, p0, Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda9;->f$2:I

    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter;->$r8$lambda$vKpM-pV41xNMSIPrVMJgTsgmW6w(Lcom/google/common/flogger/util/StackWalkerStackGetter;Ljava/lang/Class;ILjava/util/stream/Stream;)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
