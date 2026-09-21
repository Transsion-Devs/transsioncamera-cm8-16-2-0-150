.class public Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;,
        Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;
    }
.end annotation


# instance fields
.field private personCount:I

.field private persons:[Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;

.field private skInfos:[Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPersonCount()I
    .registers 1

    .line 12
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;->personCount:I

    return p0
.end method

.method public getPersons()[Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;->persons:[Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;

    return-object p0
.end method

.method public getSkInfos()[Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;->skInfos:[Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;

    return-object p0
.end method
