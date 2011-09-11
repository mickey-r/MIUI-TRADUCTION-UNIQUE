.class public Lcom/android/gallery/ui/InformationDialog;
.super Landroid/app/AlertDialog;
.source "InformationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/ui/InformationDialog$GetLocationTask;
    }
.end annotation


# static fields
.field private static locStringsCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGeocoder:Landroid/location/Geocoder;

.field private mInfoView:Landroid/view/View;

.field private mMeta:Lcom/android/gallery/data/BaseMeta;

.field private mTask:Lcom/android/gallery/ui/InformationDialog$GetLocationTask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lcom/android/gallery/ui/InformationDialog$2;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery/ui/InformationDialog$2;-><init>(IFZ)V

    sput-object v0, Lcom/android/gallery/ui/InformationDialog;->locStringsCache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)V
    .locals 3
    .parameter "context"
    .parameter "meta"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    .line 37
    const v1, 0x108009b

    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/InformationDialog;->setIcon(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/gallery/ui/InformationDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000b

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery/ui/InformationDialog;->mInfoView:Landroid/view/View;

    .line 39
    iget-object v1, p0, Lcom/android/gallery/ui/InformationDialog;->mInfoView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/InformationDialog;->setView(Landroid/view/View;)V

    .line 41
    invoke-direct {p0}, Lcom/android/gallery/ui/InformationDialog;->setupInfo()V

    .line 43
    const/4 v1, -0x1

    const v2, 0x7f090098

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/gallery/ui/InformationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    const/4 v0, -0x3

    const v1, 0x7f090067

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/gallery/ui/InformationDialog$1;

    invoke-direct {v2, p0}, Lcom/android/gallery/ui/InformationDialog$1;-><init>(Lcom/android/gallery/ui/InformationDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery/ui/InformationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/ui/InformationDialog;)Lcom/android/gallery/data/BaseMeta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery/ui/InformationDialog;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/InformationDialog;->findView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery/ui/InformationDialog;)Landroid/location/Geocoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog;->mGeocoder:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery/ui/InformationDialog;Landroid/location/Geocoder;)Landroid/location/Geocoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/gallery/ui/InformationDialog;->mGeocoder:Landroid/location/Geocoder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery/ui/InformationDialog;DD)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery/ui/InformationDialog;->getLocationKey(DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/gallery/ui/InformationDialog;->locStringsCache:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery/ui/InformationDialog;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/gallery/ui/InformationDialog;->setText(ILjava/lang/String;)V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "locality"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private findView(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog;->mInfoView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getLocationKey(DD)Ljava/lang/String;
    .locals 4
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 131
    const-string v0, "%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setText(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "text"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/InformationDialog;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method private setupInfo()V
    .locals 12

    .prologue
    const v11, 0x7f0c0032

    const v10, 0x7f0c0034

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 53
    const v5, 0x7f0c002f

    iget-object v6, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-object v6, v6, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/gallery/ui/InformationDialog;->setText(ILjava/lang/String;)V

    .line 54
    const v5, 0x7f0c0031

    iget-object v6, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-object v6, v6, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/gallery/ui/InformationDialog;->setText(ILjava/lang/String;)V

    .line 55
    const v5, 0x7f0c0036

    iget-object v6, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-wide v6, v6, Lcom/android/gallery/data/BaseMeta;->mSize:J

    invoke-static {v6, v7}, Lcom/android/gallery/util/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/gallery/ui/InformationDialog;->setText(ILjava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/Date;

    iget-object v5, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-wide v5, v5, Lcom/android/gallery/data/BaseMeta;->mDateTaken:J

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 58
    .local v0, dt:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyy HH:mm"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, format:Ljava/text/SimpleDateFormat;
    const v5, 0x7f0c0030

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/gallery/ui/InformationDialog;->setText(ILjava/lang/String;)V

    .line 61
    iget-object v5, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v5}, Lcom/android/gallery/data/BaseMeta;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    invoke-direct {p0, v11}, Lcom/android/gallery/ui/InformationDialog;->findView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 63
    const v5, 0x7f09001c

    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/InformationDialog;->setTitle(I)V

    .line 65
    iget-object v5, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    instance-of v5, v5, Lcom/android/gallery/data/MediaMeta;

    if-eqz v5, :cond_0

    .line 66
    invoke-direct {p0, v10}, Lcom/android/gallery/ui/InformationDialog;->findView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const v6, 0x7f0c0035

    iget-object v5, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    check-cast v5, Lcom/android/gallery/data/VideoMeta;

    iget-wide v7, v5, Lcom/android/gallery/data/VideoMeta;->mDuration:J

    invoke-static {v7, v8}, Lcom/android/gallery/util/Utils;->getFormatedDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/android/gallery/ui/InformationDialog;->setText(ILjava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/gallery/ui/InformationDialog;->findView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, v11}, Lcom/android/gallery/ui/InformationDialog;->findView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-direct {p0, v10}, Lcom/android/gallery/ui/InformationDialog;->findView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const v5, 0x7f09001b

    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/InformationDialog;->setTitle(I)V

    .line 78
    iget-object v5, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v5}, Lcom/android/gallery/data/BaseMeta;->validateSize()V

    .line 79
    iget-object v5, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget v4, v5, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    .line 80
    .local v4, width:I
    iget-object v5, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget v2, v5, Lcom/android/gallery/data/BaseMeta;->mHeight:I

    .line 81
    .local v2, height:I
    iget-object v5, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget v5, v5, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    div-int/lit8 v5, v5, 0x5a

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 82
    move v3, v4

    .line 83
    .local v3, temp:I
    move v4, v2

    .line 84
    move v2, v3

    .line 86
    .end local v3           #temp:I
    :cond_2
    const v5, 0x7f0c0033

    const-string v6, "%dx%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/gallery/ui/InformationDialog;->setText(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected lookupAddress()Ljava/lang/String;
    .locals 11

    .prologue
    .line 136
    const/4 v7, 0x0

    .line 138
    .local v7, address:Landroid/location/Address;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery/ui/InformationDialog;->mGeocoder:Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-wide v2, v2, Lcom/android/gallery/data/BaseMeta;->mLatitude:D

    iget-object v4, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-wide v4, v4, Lcom/android/gallery/data/BaseMeta;->mLongitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 139
    .local v8, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/location/Address;

    move-object v7, v0

    .line 143
    :cond_0
    if-eqz v7, :cond_1

    .line 144
    const-string v1, "%s,%s,%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v7}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/gallery/ui/InformationDialog;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/gallery/ui/InformationDialog;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v7}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/gallery/ui/InformationDialog;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    .end local v8           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 150
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/InformationDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v0}, Lcom/android/gallery/data/BaseMeta;->isLatLongValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;-><init>(Lcom/android/gallery/ui/InformationDialog;Lcom/android/gallery/ui/InformationDialog$1;)V

    iput-object v0, p0, Lcom/android/gallery/ui/InformationDialog;->mTask:Lcom/android/gallery/ui/InformationDialog$GetLocationTask;

    .line 105
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog;->mTask:Lcom/android/gallery/ui/InformationDialog$GetLocationTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "Gallery/InformationDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog;->mTask:Lcom/android/gallery/ui/InformationDialog$GetLocationTask;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog;->mTask:Lcom/android/gallery/ui/InformationDialog$GetLocationTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/InformationDialog$GetLocationTask;->cancel(Z)Z

    .line 115
    :cond_0
    return-void
.end method
