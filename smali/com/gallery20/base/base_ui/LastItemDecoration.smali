.class public final Lcom/gallery20/base/base_ui/LastItemDecoration;
.super Lcom/gallery20/base/base_ui/ItemDecoration;
.source "SourceFile"


# instance fields
.field private final px:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/gallery20/base/base_ui/ItemDecoration;-><init>()V

    iput p1, p0, Lcom/gallery20/base/base_ui/LastItemDecoration;->px:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Lcom/gallery20/base/base_ui/ItemDecoration$Data;)V
    .registers 4

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lcom/gallery20/base/base_ui/ItemDecoration$Data;->isLast()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 45
    iget p0, p0, Lcom/gallery20/base/base_ui/LastItemDecoration;->px:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_16
    return-void
.end method
