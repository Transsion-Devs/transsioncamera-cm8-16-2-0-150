.class public Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUserConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VEUserConfigItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private dataType:Lcom/ss/android/vesdk/VEUserConfig$DataType;

.field public id:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/vesdk/VEUserConfig$ConfigID;",
            "TT;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 80
    sget-object v0, Lcom/ss/android/vesdk/VEUserConfig$DataType;->BOOLEAN:Lcom/ss/android/vesdk/VEUserConfig$DataType;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->dataType:Lcom/ss/android/vesdk/VEUserConfig$DataType;

    goto :goto_14

    .line 81
    :cond_c
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 82
    sget-object v0, Lcom/ss/android/vesdk/VEUserConfig$DataType;->INTEGER:Lcom/ss/android/vesdk/VEUserConfig$DataType;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->dataType:Lcom/ss/android/vesdk/VEUserConfig$DataType;

    .line 86
    :goto_14
    iput-object p1, p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->id:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 87
    iput-object p2, p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->value:Ljava/lang/Object;

    return-void

    .line 84
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDataType()Lcom/ss/android/vesdk/VEUserConfig$DataType;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->dataType:Lcom/ss/android/vesdk/VEUserConfig$DataType;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEUserConfigItem{dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->dataType:Lcom/ss/android/vesdk/VEUserConfig$DataType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;->id:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
