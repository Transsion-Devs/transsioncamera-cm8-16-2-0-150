.class public abstract Lcom/ss/android/vesdk/VEDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEDataSource$OutputMode;
    }
.end annotation


# static fields
.field public static Encode:I = 0x2

.field public static Render:I = 0x1


# instance fields
.field mMode:Lcom/ss/android/vesdk/VEDataSource$OutputMode;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/ss/android/vesdk/VEDataSource$OutputMode;->Render:Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEDataSource;->mMode:Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    return-void
.end method


# virtual methods
.method public getOutputMode()Lcom/ss/android/vesdk/VEDataSource$OutputMode;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDataSource;->mMode:Lcom/ss/android/vesdk/VEDataSource$OutputMode;

    return-object p0
.end method
