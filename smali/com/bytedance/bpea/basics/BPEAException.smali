.class public final Lcom/bytedance/bpea/basics/BPEAException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final errorCode:I

.field private final errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/bytedance/bpea/basics/BPEAException;->errorCode:I

    iput-object p2, p0, Lcom/bytedance/bpea/basics/BPEAException;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 1

    .line 8
    iget p0, p0, Lcom/bytedance/bpea/basics/BPEAException;->errorCode:I

    return p0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/bytedance/bpea/basics/BPEAException;->errorMsg:Ljava/lang/String;

    return-object p0
.end method
