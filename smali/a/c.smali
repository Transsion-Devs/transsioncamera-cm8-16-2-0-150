.class public interface abstract La/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(La/c;)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, La/c;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_26

    check-cast p0, Lb/a;

    iget-object v1, p0, Lb/a;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v2, :cond_25

    iget-object p0, p0, Lb/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/e;

    iget-object p0, p0, La/e;->a:La/b;

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    return v2

    :cond_25
    :goto_25
    return v0

    :cond_26
    invoke-interface {p0}, La/c;->a()I

    move-result v1

    const/4 v3, 0x2

    if-ne v3, v1, :cond_6b

    check-cast p0, Lc/a;

    iget-object v1, p0, Lc/a;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v2, :cond_6b

    iget-object v1, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c;

    iget-object v1, v1, Lc/c;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c;

    iget-object v1, v1, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v2, :cond_6b

    iget-object p0, p0, Lc/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c;

    iget-object p0, p0, Lc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/e;

    iget-object p0, p0, La/e;->a:La/b;

    if-nez p0, :cond_6a

    goto :goto_6b

    :cond_6a
    return v2

    :cond_6b
    :goto_6b
    return v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract getDuration()I
.end method
