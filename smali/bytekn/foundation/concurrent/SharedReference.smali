.class public final Lbytekn/foundation/concurrent/SharedReference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actualValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lbytekn/foundation/concurrent/SharedReference;->actualValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 12
    iget-object p0, p0, Lbytekn/foundation/concurrent/SharedReference;->actualValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lbytekn/foundation/concurrent/SharedReference;->actualValue:Ljava/lang/Object;

    return-void
.end method
