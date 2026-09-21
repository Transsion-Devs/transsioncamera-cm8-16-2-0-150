.class public final Lcom/cutsame/solution/utils/NLETemplateUtilsKt$createMediaItems$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->createMediaItems(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;Landroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 220
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getTargetStartTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Lcom/ss/android/ugc/cut_ui/MediaItem;

    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getTargetStartTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
