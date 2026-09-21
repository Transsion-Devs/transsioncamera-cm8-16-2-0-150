.class public final Lcom/volcengine/ck/highlight/data/RelationTag;
.super Lcom/volcengine/ck/highlight/data/C3Tag;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/volcengine/ck/highlight/data/C3Tag;-><init>(ILjava/lang/String;)V

    return-void
.end method
