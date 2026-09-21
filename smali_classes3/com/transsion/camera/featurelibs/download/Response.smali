.class public abstract Lcom/transsion/camera/featurelibs/download/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/download/IRequestResponse;


# instance fields
.field private final mResponseExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/Response;->mResponseExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/Response;->mResponseExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method
