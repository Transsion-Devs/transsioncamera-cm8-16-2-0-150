.class Lcom/transsion/sort/SortUtil$NameComparator;
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
    name = "NameComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sort/SortUtil;


# direct methods
.method private constructor <init>(Lcom/transsion/sort/SortUtil;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/transsion/sort/SortUtil$NameComparator;->this$0:Lcom/transsion/sort/SortUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/sort/SortUtil;Lcom/transsion/sort/SortUtil$NameComparator;)V
    .registers 3

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/sort/SortUtil$NameComparator;-><init>(Lcom/transsion/sort/SortUtil;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sort/SortUtil$NameComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 88
    iget-object p0, p0, Lcom/transsion/sort/SortUtil$NameComparator;->this$0:Lcom/transsion/sort/SortUtil;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sort/SortUtil;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
