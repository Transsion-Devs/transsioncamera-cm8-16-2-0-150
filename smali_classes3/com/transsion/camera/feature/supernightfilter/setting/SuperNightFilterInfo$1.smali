.class Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$1;
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

    .line 61
    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 63
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_original:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_orighin:I

    const-string v3, "supernight_filter_off"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_greenorange:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_green_orange:I

    const-string v3, "green_orange"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_blackgold:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_black_gold:I

    const-string v3, "black_gold"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_blue:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_blues:I

    const-string v3, "blues"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_cyberpunk:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_cybepunk:I

    const-string v3, "cybepunk"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_abao:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_abao:I

    const-string v3, "abao"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_romatic:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_paris:I

    const-string v3, "paris"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
