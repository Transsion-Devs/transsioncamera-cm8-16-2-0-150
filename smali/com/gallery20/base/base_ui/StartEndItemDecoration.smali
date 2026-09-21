.class public final Lcom/gallery20/base/base_ui/StartEndItemDecoration;
.super Lcom/gallery20/base/base_ui/ItemDecoration;
.source "SourceFile"


# instance fields
.field private final px:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/gallery20/base/base_ui/ItemDecoration;-><init>()V

    iput p1, p0, Lcom/gallery20/base/base_ui/StartEndItemDecoration;->px:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Lcom/gallery20/base/base_ui/ItemDecoration$Data;)V
    .registers 4

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget p0, p0, Lcom/gallery20/base/base_ui/StartEndItemDecoration;->px:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
