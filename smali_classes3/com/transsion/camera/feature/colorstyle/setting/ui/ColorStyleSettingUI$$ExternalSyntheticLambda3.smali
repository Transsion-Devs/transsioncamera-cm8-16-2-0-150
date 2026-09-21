.class public final synthetic Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->$r8$lambda$kOl2g4SLj7qb4CMVhy48trSJ6MA(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p0

    return p0
.end method
