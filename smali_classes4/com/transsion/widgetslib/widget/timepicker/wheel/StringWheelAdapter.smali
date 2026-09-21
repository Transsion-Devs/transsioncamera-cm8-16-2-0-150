.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/StringWheelAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelAdapter;


# static fields
.field public static final DEFAULT_LENGTH:I = -0x1


# instance fields
.field private length:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/StringWheelAdapter;->list:Ljava/util/ArrayList;

    .line 41
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/StringWheelAdapter;->length:I

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_13

    .line 47
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/StringWheelAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 48
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/StringWheelAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemsCount()I
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/StringWheelAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getMaximumLength()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/StringWheelAdapter;->length:I

    return p0
.end method
