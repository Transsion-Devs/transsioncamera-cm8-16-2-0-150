.class public Lcom/volcengine/ck/highlight/data/C3Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/volcengine/ck/highlight/data/C3Tag;->id:I

    .line 10
    iput-object p2, p0, Lcom/volcengine/ck/highlight/data/C3Tag;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()I
    .registers 1

    .line 9
    iget p0, p0, Lcom/volcengine/ck/highlight/data/C3Tag;->id:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/C3Tag;->name:Ljava/lang/String;

    return-object p0
.end method
