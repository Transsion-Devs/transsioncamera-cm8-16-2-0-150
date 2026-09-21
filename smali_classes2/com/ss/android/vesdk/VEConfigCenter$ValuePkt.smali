.class public Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEConfigCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValuePkt"
.end annotation


# instance fields
.field private abType:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

.field private configType:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

.field private dataType:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

.field private description:Ljava/lang/String;

.field private locked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEConfigCenter$DataType;Ljava/lang/Object;Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;Ljava/lang/String;)V
    .registers 7

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->locked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 880
    iput-object p2, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->value:Ljava/lang/Object;

    .line 881
    iput-object p1, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->dataType:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    .line 882
    iput-object p3, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->configType:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    .line 883
    iput-object p4, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->description:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Lcom/ss/android/vesdk/VEConfigCenter$DataType;
    .registers 1

    .line 858
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->dataType:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Ljava/lang/Object;
    .registers 1

    .line 858
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Lcom/ss/android/vesdk/VEConfigCenter$ABType;
    .registers 1

    .line 858
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->abType:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Ljava/lang/String;
    .registers 1

    .line 858
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;
    .registers 1

    .line 858
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->configType:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    return-object p0
.end method


# virtual methods
.method public getABType()Lcom/ss/android/vesdk/VEConfigCenter$ABType;
    .registers 1

    .line 948
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->abType:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    return-object p0
.end method

.method public getConfigType()Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;
    .registers 1

    .line 939
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->configType:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    return-object p0
.end method

.method public getDataType()Lcom/ss/android/vesdk/VEConfigCenter$DataType;
    .registers 1

    .line 930
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->dataType:Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 907
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public getValueAndLock()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->locked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    .line 919
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->locked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 921
    :cond_e
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public setAbType(Lcom/ss/android/vesdk/VEConfigCenter$ABType;)V
    .registers 2

    .line 956
    iput-object p1, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->abType:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 966
    iget-object p0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->value:Ljava/lang/Object;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public updateValue(Ljava/lang/Object;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;
    .registers 3

    .line 893
    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->locked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 894
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not update this value "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Desc: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VEConfigCenter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 897
    :cond_2d
    iput-object p1, p0, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->value:Ljava/lang/Object;

    return-object p0
.end method
