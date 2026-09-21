.class public abstract Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTaskKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final classLock:Lbytekn/foundation/concurrent/lock/Lock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lbytekn/foundation/concurrent/lock/Lock;

    invoke-direct {v0}, Lbytekn/foundation/concurrent/lock/Lock;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTaskKt;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    return-void
.end method

.method public static final synthetic access$getClassLock$p()Lbytekn/foundation/concurrent/lock/Lock;
    .registers 1

    .line 1
    sget-object v0, Lcom/ss/ugc/effectplatform/task/algorithm/FetchModelTaskKt;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    return-object v0
.end method
