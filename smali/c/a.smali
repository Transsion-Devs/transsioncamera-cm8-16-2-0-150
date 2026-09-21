.class public Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/c;


# instance fields
.field public a:Lc/b;

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

    .line 0
    iget-object p0, p0, Lc/a;->a:Lc/b;

    iget p0, p0, Lc/b;->a:I

    return p0
.end method

.method public a(I)I
    .registers 7

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_2
    iget-object v2, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_62

    move v2, v0

    :goto_b
    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c;

    iget-object v3, v3, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c;

    iget v3, v3, Lc/c;->a:I

    if-gt v3, p1, :cond_49

    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c;

    iget v3, v3, Lc/c;->a:I

    iget-object v4, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c;

    iget-object v4, v4, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/e;

    iget-object v4, v4, La/e;->a:La/b;

    iget v4, v4, La/b;->b:I

    add-int/2addr v3, v4

    if-lt v3, p1, :cond_49

    return v1

    :cond_49
    iget-object v3, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c;

    iget v3, v3, Lc/c;->a:I
    :try_end_53
    .catchall {:try_start_2 .. :try_end_53} :catchall_5e

    if-le v3, p1, :cond_58

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_5e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_62
    const/high16 p0, -0x80000000

    return p0
.end method

.method public getDuration()I
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iget-object p0, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c;

    iget-object v1, p0, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    move v4, v3

    :cond_17
    :goto_17
    if-ge v4, v2, :cond_41

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, La/e;

    iget-object v6, v5, La/e;->a:La/b;

    iget-object v6, v6, La/b;->a:Ljava/lang/String;

    const-string v7, "continuous"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    iget-object v5, v5, La/e;->a:La/b;

    iget v6, v5, La/b;->b:I

    iget v5, v5, La/b;->c:I

    add-int/2addr v6, v5

    goto :goto_3d

    :catch_35
    move-exception p0

    goto :goto_45

    :cond_37
    iget-object v5, v5, La/e;->a:La/b;

    iget v5, v5, La/b;->b:I

    add-int/lit8 v6, v5, 0x30

    :goto_3d
    if-le v6, v3, :cond_17

    move v3, v6

    goto :goto_17

    :cond_41
    iget p0, p0, Lc/c;->a:I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_35

    add-int/2addr v3, p0

    return v3

    :goto_45
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
