.class public Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/c;


# instance fields
.field public a:Lb/b;

.field public b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    iget-object p0, p0, Lb/a;->a:Lb/b;

    iget p0, p0, Lb/b;->a:I

    return p0
.end method

.method public getDuration()I
    .registers 3

    :try_start_0
    iget-object p0, p0, Lb/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/e;

    iget-object p0, p0, La/e;->a:La/b;

    const-string v0, "continuous"

    iget-object v1, p0, La/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, La/b;->b:I

    iget p0, p0, La/b;->c:I

    add-int/2addr v0, p0

    return v0

    :cond_20
    iget p0, p0, La/b;->b:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_25

    add-int/lit8 p0, p0, 0x30

    return p0

    :catch_25
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
