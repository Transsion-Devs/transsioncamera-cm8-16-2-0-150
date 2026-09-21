.class Lcom/apprichtap/haptic/base/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprichtap/haptic/base/a;->g(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/e;La/e;)I
    .registers 3

    iget-object p0, p1, La/e;->a:La/b;

    iget p0, p0, La/b;->b:I

    iget-object p1, p2, La/e;->a:La/b;

    iget p1, p1, La/b;->b:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, La/e;

    check-cast p2, La/e;

    invoke-virtual {p0, p1, p2}, Lcom/apprichtap/haptic/base/a$a;->a(La/e;La/e;)I

    move-result p0

    return p0
.end method
