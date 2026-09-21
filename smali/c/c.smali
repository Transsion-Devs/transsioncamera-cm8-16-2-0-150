.class public Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object p0, p0, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    :cond_9
    :goto_9
    if-ge v3, v1, :cond_33

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, La/e;

    iget-object v5, v4, La/e;->a:La/b;

    iget-object v5, v5, La/b;->a:Ljava/lang/String;

    const-string v6, "continuous"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v4, v4, La/e;->a:La/b;

    iget v5, v4, La/b;->b:I

    iget v4, v4, La/b;->c:I

    add-int/2addr v5, v4

    goto :goto_2f

    :catch_27
    move-exception p0

    goto :goto_34

    :cond_29
    iget-object v4, v4, La/e;->a:La/b;

    iget v4, v4, La/b;->b:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_27

    add-int/lit8 v5, v4, 0x30

    :goto_2f
    if-le v5, v2, :cond_9

    move v2, v5

    goto :goto_9

    :cond_33
    return v2

    :goto_34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
