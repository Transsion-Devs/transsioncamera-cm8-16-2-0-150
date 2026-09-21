.class public Lcom/ss/android/vesdk/keyvaluepair/VEValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/keyvaluepair/VEValue$Type;
    }
.end annotation


# static fields
.field public static final BOOLEAN:I = 0x0

.field public static final DOUBLE:I = 0x4

.field public static final FLOAT:I = 0x3

.field public static final INTEGER:I = 0x1

.field public static final LONG:I = 0x2

.field public static final NULL:I = -0x1

.field public static final STRING:I = 0x5


# instance fields
.field public type:I

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 111
    iget p0, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->type:I

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public setBooleanValue(Ljava/lang/Boolean;)V
    .registers 3

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->type:I

    .line 46
    iput-object p1, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public setDoubleValue(Ljava/lang/Double;)V
    .registers 3

    const/4 v0, 0x4

    .line 89
    iput v0, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->type:I

    .line 90
    iput-object p1, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public setFloatValue(Ljava/lang/Float;)V
    .registers 3

    const/4 v0, 0x3

    .line 78
    iput v0, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->type:I

    .line 79
    iput-object p1, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public setIntegerValue(Ljava/lang/Integer;)V
    .registers 3

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->type:I

    .line 57
    iput-object p1, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public setLongValue(Ljava/lang/Long;)V
    .registers 3

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->type:I

    .line 68
    iput-object p1, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->value:Ljava/lang/Object;

    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    .line 100
    iput v0, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->type:I

    .line 101
    iput-object p1, p0, Lcom/ss/android/vesdk/keyvaluepair/VEValue;->value:Ljava/lang/Object;

    return-void
.end method
