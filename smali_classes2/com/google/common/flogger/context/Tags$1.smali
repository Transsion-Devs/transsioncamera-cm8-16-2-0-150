.class Lcom/google/common/flogger/context/Tags$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 120
    # invokes: Lcom/google/common/flogger/context/Tags$Type;->of(Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Type;
    invoke-static {p1}, Lcom/google/common/flogger/context/Tags$Type;->access$100(Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Type;

    move-result-object p0

    .line 121
    # invokes: Lcom/google/common/flogger/context/Tags$Type;->of(Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Type;
    invoke-static {p2}, Lcom/google/common/flogger/context/Tags$Type;->access$100(Ljava/lang/Object;)Lcom/google/common/flogger/context/Tags$Type;

    move-result-object v0

    if-ne p0, v0, :cond_f

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/context/Tags$Type;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_f
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method
