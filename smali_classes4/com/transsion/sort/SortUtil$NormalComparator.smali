.class Lcom/transsion/sort/SortUtil$NormalComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sort/SortUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sort/SortUtil;


# direct methods
.method private constructor <init>(Lcom/transsion/sort/SortUtil;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/sort/SortUtil$NormalComparator;->this$0:Lcom/transsion/sort/SortUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/sort/SortUtil;Lcom/transsion/sort/SortUtil$NormalComparator;)V
    .registers 3

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/sort/SortUtil$NormalComparator;-><init>(Lcom/transsion/sort/SortUtil;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/sort/SortUtil$Comparable;Lcom/transsion/sort/SortUtil$Comparable;)I
    .registers 3

    .line 97
    iget-object p0, p0, Lcom/transsion/sort/SortUtil$NormalComparator;->this$0:Lcom/transsion/sort/SortUtil;

    invoke-interface {p1}, Lcom/transsion/sort/SortUtil$Comparable;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/transsion/sort/SortUtil$Comparable;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sort/SortUtil;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/transsion/sort/SortUtil$NormalComparator;->compare(Lcom/transsion/sort/SortUtil$Comparable;Lcom/transsion/sort/SortUtil$Comparable;)I

    move-result p0

    return p0
.end method
