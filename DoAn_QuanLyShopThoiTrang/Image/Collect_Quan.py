import requests
from bs4 import BeautifulSoup
import os

url_ao='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/'
folder = 'Quan'
try:
    os.mkdir(os.path.join("D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image",folder))
except:
    pass
os.chdir(os.path.join("D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image",folder))
def imagedown(url,folder):
    r = requests.get(url)
    soup=BeautifulSoup(r.text,'html.parser')

    lista = soup.find_all('a')
    # print(image)
    for a in lista:
        if a.has_attr('class'):
            if a['class'] == ['image-resize']:
                t1= a['title']
                if(a['title']=='QUẦN SHORT NAM SKKTK852')
                    # try:
                    #     os.mkdir(os.path.join(
                    #         "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\Quan\QUẦN SHORT NAM SKKTK852",
                    #         t1))
                    # except:
                    #     pass
                    # os.chdir(os.path.join(
                    #     "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\Quan",
                    #     t1))
                    r1 = requests.get(a['href'])
                    soup1 = BeautifulSoup(r1.text, 'html.parser')
                    images = soup1.find_all('img')
                    for img in images:
                        if img.has_attr('alt'):
                            if img['alt'] == " "+a['title']+" ":
                                namefolder = img['src'].split('/')
                                link_urlCT =img['src']
                                with open(namefolder[len(namefolder)-1].replace(' ', '-').replace('/', ''), 'wb') as f:
                                    im = requests.get(link_urlCT)
                                    f.write(im.content)
                                    print('Writing: ', namefolder[len(namefolder)-1])
def load():
    for i in range(2,9):
        url="https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/quan/page/"+str(i)
        imagedown(url,folder)
load()
#                 for img in images:
#                     pos=0
#                     if image.has_attr('class'):
#                         if image["class"] == ['img-loop']:
#
#
#
#
#
#
#
#
#                         namefd = image['alt']
#                         try:
#                             os.mkdir(os.path.join("D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\Ao",
#                                 namefd))
#                         except:
#                             pass
#                         os.chdir(os.path.join(
#                             "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\Ao",
#                             namefd))
#                         r = requests.get(url)
#                         soup = BeautifulSoup(r.text, 'html.parser')
#
#                         images = soup.find_all('img')
#
#
#                     # link = image['src']
#                     # print(name,link)
#
#
#
#
#                     with open(name.replace(' ','-').replace('/','') + '.jpg','wb') as f:
#                         im = requests.get(link)
#                         f.write(im.content)
#                         print('Writing: ',name)
#
#
#
#
#
#
#
# def load_fol(url_1,folder_1,length):
#     try:
#         os.mkdir(os.path.join(os.getcwd(),folder_1))
#     except:
#         pass
#     os.chdir(os.path.join(os.getcwd(),folder_1))
#     pos = 0
#     for i in range(length) :
#         if i > 1:
#             imagedown(pos,url_1+'page/'+str(i),folder_1)
#             pos+=16
#         if i == 1:
#             imagedown(pos,url_1,folder_1)
#             pos+=16
#
# load_fol(url_aopolo,"aopolo",2)
# load_fol(url_aophong,"aophong",5)
# load_fol(url_aosomi,"aosomi",4)
# load_fol(url_aolen,"aolen",2)
# load_fol(url_aohoodile,"aohoodie",2)
# load_fol(url_aokhoac,"aokhoac",2)
# load_fol(url_aovest,"aovest",2)
