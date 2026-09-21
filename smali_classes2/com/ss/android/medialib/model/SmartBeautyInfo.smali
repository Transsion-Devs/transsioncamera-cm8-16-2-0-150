.class public Lcom/ss/android/medialib/model/SmartBeautyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private info:[Lcom/ss/android/medialib/model/SmartBeauty;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()[Lcom/ss/android/medialib/model/SmartBeauty;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/android/medialib/model/SmartBeautyInfo;->info:[Lcom/ss/android/medialib/model/SmartBeauty;

    return-object p0
.end method

.method public setInfo([Lcom/ss/android/medialib/model/SmartBeauty;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/ss/android/medialib/model/SmartBeautyInfo;->info:[Lcom/ss/android/medialib/model/SmartBeauty;

    return-void
.end method
