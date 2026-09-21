.class public Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/RestoreObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreObjectStatus"
.end annotation


# static fields
.field public static final AVALIABLE:Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

.field public static final INPROGRESS:Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    new-instance v0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;-><init>(I)V

    sput-object v0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;->AVALIABLE:Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    .line 82
    new-instance v0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    const/16 v1, 0xca

    invoke-direct {v0, v1}, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;-><init>(I)V

    sput-object v0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;->INPROGRESS:Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 84
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 85
    iput p1, p0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;->code:I

    return-void
.end method

.method public static valueOf(I)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
    .registers 2

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_7

    .line 98
    sget-object p0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;->AVALIABLE:Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    return-object p0

    :cond_7
    const/16 v0, 0xca

    if-ne p0, v0, :cond_e

    sget-object p0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;->INPROGRESS:Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    return-object p0

    :cond_e
    new-instance v0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    invoke-direct {v0, p0}, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 1

    .line 94
    iget p0, p0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;->code:I

    return p0
.end method
