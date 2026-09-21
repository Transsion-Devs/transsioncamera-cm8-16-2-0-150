.class Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$2;
.super Landroidx/collection/ArrayMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/ArrayMap;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 5

    .line 73
    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 75
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_transsion_original:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->transsion_supernight_filter_orighin:I

    const-string v3, "supernight_filter_off"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_deep:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->transsion_supernight_filter_deep:I

    const-string v3, "deep"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_bright:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->transsion_supernight_filter_bright:I

    const-string v3, "bright"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_electronic:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->transsion_supernight_filter_electronic:I

    const-string v3, "electronic"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_sunset:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->transsion_supernight_filter_sunset:I

    const-string v3, "sunset"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_move:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->transsion_supernight_filter_film:I

    const-string v3, "film"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_bgold:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->transsion_supernight_filter_bgold:I

    const-string v3, "black_gold"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
